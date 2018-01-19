#!/bin/bash
echo Enter number of TECAMS
read tecams
echo Enter number of SDS
read sds
echo Enter number of RPS-Recorder
read rpsrec
echo Enter number of RPS-Playback
read rpsplayback
echo Enter number of ACT
read act
echo Enter number of TMERS
read tmers

echo The following is your configuration: tecams: $tecams sds: $sds RPS-Recorder $rpsrec RPS-Playback $rpsplayback act: $act tmers: $tmers

#write to file
echo tecams	$tecams>config
echo sds	$sds>>config
echo rpsrec	$rpsrec>>config
echo rpsPlaybck	$rpsplayback>>config
echo act	$act>>config
echo tmers	$tmers>>config
