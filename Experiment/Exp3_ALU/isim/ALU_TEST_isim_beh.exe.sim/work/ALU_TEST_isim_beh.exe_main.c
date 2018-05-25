/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000054293371_4092549402_init();
    work_m_00000000004274923758_1273188681_init();
    work_m_00000000000906111599_0746708786_init();
    work_m_00000000000044912214_0596150753_init();
    work_m_00000000000382606285_2631355185_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000382606285_2631355185");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
