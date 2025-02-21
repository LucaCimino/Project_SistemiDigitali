-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AES_encryption_sub_bytes is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    state_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    state_ce0 : OUT STD_LOGIC;
    state_we0 : OUT STD_LOGIC;
    state_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    state_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of AES_encryption_sub_bytes is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_22 : BOOLEAN;
    signal s_box_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal s_box_ce0 : STD_LOGIC;
    signal s_box_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_1_fu_73_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_1_reg_125 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_49 : BOOLEAN;
    signal tmp_3_fu_83_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_3_reg_130 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond1_fu_67_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_1_fu_97_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_1_reg_138 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_64 : BOOLEAN;
    signal state_addr_reg_143 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond_fu_91_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_78 : BOOLEAN;
    signal i_reg_45 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_56 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_95 : BOOLEAN;
    signal tmp_7_fu_112_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_fu_117_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_79_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_5_cast_fu_103_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_6_fu_107_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component AES_encryption_aes_key_expansion_s_box IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    s_box_U : component AES_encryption_aes_key_expansion_s_box
    generic map (
        DataWidth => 8,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => s_box_address0,
        ce0 => s_box_ce0,
        q0 => s_box_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_reg_45_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = exitcond_fu_91_p2)))) then 
                i_reg_45 <= i_1_reg_125;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_45 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_reg_56_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_fu_67_p2 = ap_const_lv1_0))) then 
                j_reg_56 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
                j_reg_56 <= j_1_reg_138;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_1_reg_125 <= i_1_fu_73_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                j_1_reg_138 <= j_1_fu_97_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond_fu_91_p2))) then
                state_addr_reg_143 <= tmp_7_fu_112_p1(4 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_fu_67_p2 = ap_const_lv1_0))) then
                    tmp_3_reg_130(3 downto 2) <= tmp_3_fu_83_p3(3 downto 2);
            end if;
        end if;
    end process;
    tmp_3_reg_130(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond1_fu_67_p2, exitcond_fu_91_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond1_fu_67_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if ((ap_const_lv1_0 = exitcond_fu_91_p2)) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st3_fsm_2;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st2_fsm_1, exitcond1_fu_67_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond1_fu_67_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond1_fu_67_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond1_fu_67_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_22_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_22 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_49_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_49 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_64_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_64 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_78_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_78 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_95_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_95 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_22)
    begin
        if (ap_sig_22) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_49)
    begin
        if (ap_sig_49) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_64)
    begin
        if (ap_sig_64) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_78)
    begin
        if (ap_sig_78) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_95)
    begin
        if (ap_sig_95) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_67_p2 <= "1" when (i_reg_45 = ap_const_lv3_4) else "0";
    exitcond_fu_91_p2 <= "1" when (j_reg_56 = ap_const_lv3_4) else "0";
    i_1_fu_73_p2 <= std_logic_vector(unsigned(i_reg_45) + unsigned(ap_const_lv3_1));
    j_1_fu_97_p2 <= std_logic_vector(unsigned(j_reg_56) + unsigned(ap_const_lv3_1));
    s_box_address0 <= tmp_8_fu_117_p1(8 - 1 downto 0);

    s_box_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            s_box_ce0 <= ap_const_logic_1;
        else 
            s_box_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    state_address0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, state_addr_reg_143, ap_sig_cseq_ST_st5_fsm_4, tmp_7_fu_112_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            state_address0 <= state_addr_reg_143;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            state_address0 <= tmp_7_fu_112_p1(4 - 1 downto 0);
        else 
            state_address0 <= "XXXX";
        end if; 
    end process;


    state_ce0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, ap_sig_cseq_ST_st5_fsm_4)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) or (ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4))) then 
            state_ce0 <= ap_const_logic_1;
        else 
            state_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    state_d0 <= s_box_q0;

    state_we0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4))) then 
            state_we0 <= ap_const_logic_1;
        else 
            state_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_3_fu_83_p3 <= (tmp_fu_79_p1 & ap_const_lv2_0);
    tmp_5_cast_fu_103_p1 <= std_logic_vector(resize(unsigned(j_reg_56),4));
    tmp_6_fu_107_p2 <= std_logic_vector(unsigned(tmp_3_reg_130) + unsigned(tmp_5_cast_fu_103_p1));
    tmp_7_fu_112_p1 <= std_logic_vector(resize(unsigned(tmp_6_fu_107_p2),64));
    tmp_8_fu_117_p1 <= std_logic_vector(resize(unsigned(state_q0),64));
    tmp_fu_79_p1 <= i_reg_45(2 - 1 downto 0);
end behav;
