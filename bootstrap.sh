#!/bin/bash

generate_linmail_config() {
  local mycall="$MYCALL"

  cat << EOF > /opt/linbpq/linmail.cfg
main :
{
  Streams = 10;
  BBSApplNum = 1;
  BBSName = "$mycall";
  SYSOPCall = "";
  H-Route = "";
  AMPRDomain = "";
  EnableUI = 0;
  RefuseBulls = 0;
  OnlyKnown = 0;
  SendSYStoSYSOPCall = 0;
  SendBBStoSYSOPCall = 0;
  DontHoldNewUsers = 0;
  DefaultNoWINLINK = 0;
  AllowAnon = 0;
  DontNeedHomeBBS = 0;
  DontCheckFromCall = 0;
  UserCantKillT = 0;
  ForwardToMe = 0;
  SMTPPort = 0;
  POP3Port = 0;
  NNTPPort = 0;
  RemoteEmail = 0;
  SendAMPRDirect = 0;
  MailForInterval = 0;
  MailForText = "";
  AuthenticateSMTP = 0;
  MulticastRX = 0;
  SMTPGatewayEnabled = 0;
  ISPSMTPPort = 0;
  ISPPOP3Port = 0;
  POP3PollingInterval = 0;
  MyDomain = "";
  ISPSMTPName = "";
  ISPEHLOName = "";
  ISPPOP3Name = "";
  ISPAccountName = "";
  ISPAccountPass = "6669817C67C1CC4B2483950DB03ECF94";
  Log_BBS = 1;
  Log_TCP = 1;
  Version = "6,0,23,31";
  WelcomeMsg = "";
  NewUserWelcomeMsg = "";
  ExpertWelcomeMsg = "";
  Prompt = "";
  NewUserPrompt = "";
  ExpertPrompt = "";
  SignoffMsg = "";
  RejFrom = "";
  RejTo = "";
  RejAt = "";
  RejBID = "";
  HoldFrom = "";
  HoldTo = "";
  HoldAt = "";
  HoldBID = "";
  SendWP = 0;
  SendWPType = 0;
  FilterWPBulls = 0;
  NoWPGuesses = 0;
  SendWPTO = "";
  SendWPVIA = "";
  SendWPAddrs = "";
  MaxTXSize = 99999;
  MaxRXSize = 99999;
  ReaddressLocal = 0;
  ReaddressReceived = 0;
  WarnNoRoute = 1;
  Localtime = 0;
  SendPtoMultiple = 0;
  FWDAliases = "";
};
BBSForwarding :
{
};
Housekeeping :
{
  LastHouseKeepingTime = 0L;
  LastTrafficTime = 0L;
  MaxMsgno = 60000;
  BidLifetime = 60;
  MaxAge = 30;
  LogLifetime = 7;
  MaintInterval = 24;
  UserLifetime = 0;
  MaintTime = 0;
  PR = 30.0;
  PUR = 30.0;
  PF = 30.0;
  PNF = 30.0;
  BF = 30;
  BNF = 30;
  NTSD = 30;
  NTSF = 30;
  NTSU = 30;
  DeletetoRecycleBin = 0;
  SuppressMaintEmail = 0;
  MaintSaveReg = 0;
  OverrideUnsent = 0;
  SendNonDeliveryMsgs = 1;
  GenerateTrafficReport = 1;
  LTFROM = "";
  LTTO = "";
  LTAT = "";
};
UIPort1 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort2 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort3 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort4 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort5 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort6 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort7 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort8 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort9 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort10 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort11 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort12 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort13 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort14 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort15 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort16 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort17 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort18 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort19 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort20 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort21 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort22 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort23 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort24 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort25 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort26 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort27 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort28 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort29 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort30 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort31 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
UIPort32 :
{
  Enabled = 0;
  SendMF = 0;
  SendHDDR = 0;
  SendNull = 0;
};
BBSUsers :
{
};
EOF

}

current_date=$(date)

echo "#################"
echo "# BOOTSTRAPPING #"
echo "#################"
echo ""
echo "=== $current_date ==="
echo ""

if [[ ! -d "/opt/linbpq" ]]; then
  while true; do
    echo "Directory /opt/linbq does not exist. Please mount it"
    sleep 30
  done
else
  echo "Copying linbpq base files to mounted volume"
  rsync -av --itemize-changes --exclude '*.sh' /opt/linbpq-base/ /opt/linbpq/
fi

if [ ! -f "/opt/linbpq/BPQNODES.dat" ]; then
  echo "BPQNODES.dat doesn't exist creating a new one"
  touch /opt/linbpq/BPQNODES.dat
fi

if [ ! -f "/opt/linbpq/linmail.cfg" ]; then
  echo "linmail.cfg doesn't exist creating a new one"
  generate_linmail_config
fi
