.bit -> "C:\Users\lucac\Vivado\AES_CTR_Pynq\AES_CTR_Pynq.runs\impl_1\design_1_wrapper.bit"
.tcl -> "C:\Users\lucac\Vivado\AES_CTR_Pynq\AES_CTR_Pynq.runs\impl_1\design_1_wrapper.tcl"
.hwh -> "C:\Users\lucac\Vivado\AES_CTR_Pynq\AES_CTR_Pynq.srcs\sources_1\bd\design_1\hw_handoff\design_1.hwh"

Mettere i tre file in una cartella e caricarla sulla Pynq in /home/xilinx/

Capire a quali indirizzi fare READ e WRITE con AXI



#######################################################################

Driver Python
_____________


from pynq import Overlay

overlay = Overlay('/home/xilinx/NOME_FILE.bit')


aes_ctr_ip = overlay.single_block_CTR_encrypt
help(aes_ctr_ip)


plaintext = b"\x5b\x4a\x02\x47\x04\x26\x3f\x1e\x5d\x87\x74\x3d\x3b\xf5\xa8\x53"
key = b"\x62\xb1\x74\xa6\x6b\xbf\x11\x62\xe7\x67\xd2\xff\x62\x1f\xe1\x90"
nonce = b"\x3b\x8d\x01\xed\x53\xaf\xaa\x21\x72\xb3\x54\xf7\xa8\x27\xe0\x82"

aes_ctr_ip.write( $INDIRIZZO_PLAINTEXT, plaintext)
aes_ctr_ip.write( $INDIRIZZO_KEY, key)
aes_ctr_ip.write( $INDIRIZZO_NONCE, nonce)

aes_ctr_ip.read( $INDIRIZZO_CIPHER)

# cipher deve essere  =  33 fc 4b cc 49 32 5c 51 f3 00 03 07 49 9d 5c 35



############################################################################

Progetto Vivado

- seguire tutorial: "Creating a custom AXI-Streaming IP in Vivado" (https://www.youtube.com/watch?v=5gA3xnsSrdo)
- molto simile anche: "How to accelerate a function with PYNQ" (https://www.youtube.com/watch?v=PwG037LuNvA)

modifiche
- axi_dma_0  ->  Enable Read Channel  -> Stream Data Width  -> 8
- AddIP  ->  constant  -> collegata a ap_start dell'IPCore


## Altri tutorial
- Tutoria l: using a HLS stream IP with DMA (Part 1: HLS design)          ->  https://discuss.pynq.io/t/tutorial-using-a-hls-stream-ip-with-dma-part-1-hls-design/3344/1
- Tutoria 2: using a HLS stream IP with DMA (Part 2: Vivado design)       ->  https://discuss.pynq.io/t/tutorial-using-a-hls-stream-ip-with-dma-part-2-vivado-design/3345
- Tutoria 3: using a HLS stream IP with DMA (Part 3: using IP from PYNQ)  -> https://discuss.pynq.io/t/tutorial-using-a-hls-stream-ip-with-dma-part-3-using-the-hls-ip-from-pynq/3346


##########################

In questa repo ci sono gia i .bit, .tcl e .hwh gia fatti con anche un notebook pronto che li usa
https://github.com/WilliamsCeng/02Hero/tree/master/boards/Pynq-Z2/AES_En_De_PYNQ






