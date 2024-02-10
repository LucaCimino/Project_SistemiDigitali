#include "AES_encryption.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void AES_encryption::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"i_plaintext_TDATA\" :  \"" << i_plaintext_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"i_plaintext_TVALID\" :  \"" << i_plaintext_TVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"i_plaintext_TREADY\" :  \"" << i_plaintext_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"i_plaintext_TUSER\" :  \"" << i_plaintext_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"i_plaintext_TLAST\" :  \"" << i_plaintext_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"cipher_TDATA\" :  \"" << cipher_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"cipher_TVALID\" :  \"" << cipher_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"cipher_TREADY\" :  \"" << cipher_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"cipher_TUSER\" :  \"" << cipher_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"cipher_TLAST\" :  \"" << cipher_TLAST.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

