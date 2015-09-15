<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(1:0)" />
        <signal name="XLXN_22(2:0)" />
        <signal name="XLXN_23(2:0)" />
        <signal name="digit(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="rst" />
        <signal name="clk50" />
        <signal name="XLXN_24" />
        <port polarity="Output" name="digit(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk50" />
        <blockdef name="dekad_kij">
            <timestamp>2013-11-17T15:6:59</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="main">
            <timestamp>2013-11-17T15:7:5</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="dekad_kij" name="XLXI_1">
            <blockpin signalname="XLXN_20" name="bal_fej_allapot" />
            <blockpin signalname="XLXN_19" name="jobb_fej_allapot" />
            <blockpin signalname="XLXN_21(1:0)" name="cd(1:0)" />
            <blockpin signalname="XLXN_23(2:0)" name="bal_allapot(2:0)" />
            <blockpin signalname="XLXN_22(2:0)" name="jobb_allapot(2:0)" />
            <blockpin signalname="digit(3:0)" name="digit(3:0)" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="main" name="XLXI_2">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk50" name="clk50" />
            <blockpin signalname="XLXN_19" name="jobb_fej_allapot" />
            <blockpin signalname="XLXN_20" name="bal_fej_allapot" />
            <blockpin signalname="XLXN_22(2:0)" name="jobb_allapot(2:0)" />
            <blockpin signalname="XLXN_23(2:0)" name="bal_allapot(2:0)" />
            <blockpin signalname="XLXN_21(1:0)" name="cd(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_21(1:0)">
            <wire x2="1856" y1="1008" y2="1008" x1="1792" />
            <wire x2="1856" y1="960" y2="1008" x1="1856" />
            <wire x2="1968" y1="960" y2="960" x1="1856" />
            <wire x2="1968" y1="880" y2="960" x1="1968" />
            <wire x2="2112" y1="880" y2="880" x1="1968" />
        </branch>
        <branch name="XLXN_22(2:0)">
            <wire x2="1936" y1="880" y2="880" x1="1792" />
            <wire x2="1936" y1="880" y2="1008" x1="1936" />
            <wire x2="2112" y1="1008" y2="1008" x1="1936" />
        </branch>
        <branch name="XLXN_23(2:0)">
            <wire x2="2112" y1="944" y2="944" x1="1792" />
        </branch>
        <branch name="digit(3:0)">
            <wire x2="2768" y1="752" y2="752" x1="2496" />
        </branch>
        <branch name="seg(6:0)">
            <wire x2="2736" y1="1008" y2="1008" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2768" y="752" name="digit(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1008" name="seg(6:0)" orien="R0" />
        <branch name="rst">
            <wire x2="784" y1="896" y2="912" x1="784" />
            <wire x2="1392" y1="912" y2="912" x1="784" />
            <wire x2="1408" y1="752" y2="752" x1="1392" />
            <wire x2="1392" y1="752" y2="912" x1="1392" />
        </branch>
        <branch name="clk50">
            <wire x2="880" y1="976" y2="976" x1="864" />
            <wire x2="880" y1="976" y2="1008" x1="880" />
            <wire x2="1408" y1="1008" y2="1008" x1="880" />
        </branch>
        <iomarker fontsize="28" x="864" y="976" name="clk50" orien="R180" />
        <branch name="XLXN_19">
            <wire x2="1936" y1="752" y2="752" x1="1792" />
            <wire x2="1936" y1="752" y2="816" x1="1936" />
            <wire x2="2112" y1="816" y2="816" x1="1936" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1840" y1="816" y2="816" x1="1792" />
            <wire x2="1840" y1="656" y2="816" x1="1840" />
            <wire x2="2096" y1="656" y2="656" x1="1840" />
            <wire x2="2096" y1="656" y2="752" x1="2096" />
            <wire x2="2112" y1="752" y2="752" x1="2096" />
        </branch>
        <instance x="2112" y="1040" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1408" y="1040" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="784" y="896" name="rst" orien="R270" />
    </sheet>
</drawing>