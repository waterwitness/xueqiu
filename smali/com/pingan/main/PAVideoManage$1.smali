.class Lcom/pingan/main/PAVideoManage$1;
.super Landroid/os/Handler;
.source "PAVideoManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingan/main/PAVideoManage;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/main/PAVideoManage;


# direct methods
.method constructor <init>(Lcom/pingan/main/PAVideoManage;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 343
    :cond_0
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 368
    :goto_1
    return-void

    .line 249
    :sswitch_0
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u83b7\u53d6\u5206\u673a\u53f7\u6210\u529f\uff01"

    invoke-interface {v0, v1, v2}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 250
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET_EXTENSION_OK_S--\u5206\u673a\u53f7\u6210\u529f"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    # getter for: Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$200()Landroid/content/Context;

    move-result-object v0

    const-string v1, "config"

    const-string v2, "extensionTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/pingan/paphone/utils/CommonUtil;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 252
    # setter for: Lcom/pingan/main/PAVideoManage;->getExCount:I
    invoke-static {v6}, Lcom/pingan/main/PAVideoManage;->access$302(I)I

    .line 253
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handler--GET_EXTENSION_OK_S-GlobalVarHolder.account:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/main/GlobalVarHolder;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->account:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->password:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->SBCDomain:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->SBCIP:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->SBCPort:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/pingan/main/GlobalVarHolder;->password:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "zq"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/GlobalVarHolder;->password:Ljava/lang/String;

    .line 265
    :cond_1
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v2}, Lcom/pingan/main/PAVideoSdkApiManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serverPath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pingan/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->isSDKAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    sget-object v1, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0, v6}, Lcom/pingan/main/PAVideoSdkApiManager;->register(I)Z

    .line 269
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    const/16 v1, 0x1e

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/pingan/main/PAVideoSdkApiManager;->setPacketLoss(II)Z

    goto/16 :goto_0

    .line 278
    :sswitch_1
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u5206\u673a\u53f7\u4e0d\u8db3\uff01"

    invoke-interface {v0, v1, v2}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 279
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET_EXTENSION_OK_F--\u5206\u673a\u53f7\u4e0d\u8db3"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :sswitch_2
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u83b7\u53d6\u5206\u673a\u53f7\u5931\u8d25\uff01"

    invoke-interface {v0, v1, v2}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 283
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET_EXTENSION_FAIL--\u5206\u673a\u53f7\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    # getter for: Lcom/pingan/main/PAVideoManage;->getExCount:I
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$300()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 285
    # getter for: Lcom/pingan/main/PAVideoManage;->context:Landroid/content/Context;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$200()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pingan/main/PAVideoManage;->access$400(Lcom/pingan/main/PAVideoManage;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/extension/MCPExtension2;->getExtension(Landroid/content/Context;Landroid/os/Handler;)V

    .line 286
    # operator++ for: Lcom/pingan/main/PAVideoManage;->getExCount:I
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$308()I

    .line 290
    :goto_2
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handler--GET_EXTENSION_FAIL"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :cond_2
    # setter for: Lcom/pingan/main/PAVideoManage;->getExCount:I
    invoke-static {v6}, Lcom/pingan/main/PAVideoManage;->access$302(I)I

    goto :goto_2

    .line 293
    :sswitch_3
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u91ca\u653e\u5206\u673a\u53f7\u6210\u529f\uff01"

    invoke-interface {v0, v1, v2}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 294
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handler--\u91ca\u653e\u5206\u673a\u53f7\u6210\u529f"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :sswitch_4
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u5f00\u542f\u89c6\u9891\u6210\u529f\uff01"

    invoke-interface {v0, v1, v2}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # invokes: Lcom/pingan/main/PAVideoManage;->startVideo()V
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$500(Lcom/pingan/main/PAVideoManage;)V

    goto/16 :goto_0

    .line 303
    :sswitch_5
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hang_up"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->hangup()Z

    .line 306
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$600(Lcom/pingan/main/PAVideoManage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # invokes: Lcom/pingan/main/PAVideoManage;->saveHungUpState()V
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$700(Lcom/pingan/main/PAVideoManage;)V

    goto/16 :goto_0

    .line 312
    :sswitch_6
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clean_view"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->cleanVideoView()V

    .line 315
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->callID:Ljava/lang/String;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$600(Lcom/pingan/main/PAVideoManage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # invokes: Lcom/pingan/main/PAVideoManage;->saveHungUpState()V
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$700(Lcom/pingan/main/PAVideoManage;)V

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "\u5750\u5e2d\u6302\u673a\uff01"

    invoke-interface {v0, v1, v2}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 328
    :sswitch_7
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHECKED_REJECT"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :sswitch_8
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHECKED_PASS"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :sswitch_9
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHECKED_NOT_PASS"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 348
    if-gtz v0, :cond_4

    .line 349
    const/4 v0, 0x1

    .line 351
    :cond_4
    # getter for: Lcom/pingan/main/PAVideoManage;->queueCount:I
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$800()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 352
    # setter for: Lcom/pingan/main/PAVideoManage;->queueCount:I
    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->access$802(I)I

    .line 354
    :cond_5
    iget-object v1, p0, Lcom/pingan/main/PAVideoManage$1;->this$0:Lcom/pingan/main/PAVideoManage;

    # getter for: Lcom/pingan/main/PAVideoManage;->hs:Lcom/pingan/main/PAVideoManage$HandlerState;
    invoke-static {v1}, Lcom/pingan/main/PAVideoManage;->access$000(Lcom/pingan/main/PAVideoManage;)Lcom/pingan/main/PAVideoManage$HandlerState;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u60a8\u7684\u524d\u9762\u8fd8\u6709"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u4f4d\u5ba2\u6237\u5728\u7b49\u5f85\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/pingan/main/PAVideoManage$HandlerState;->handlerState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 356
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xcc -> :sswitch_2
        0xcd -> :sswitch_3
        0x456 -> :sswitch_4
        0x457 -> :sswitch_5
        0x458 -> :sswitch_6
        0x45a -> :sswitch_7
        0x45b -> :sswitch_8
        0x45c -> :sswitch_9
    .end sparse-switch

    .line 343
    :pswitch_data_0
    .packed-switch 0xd2
        :pswitch_0
    .end packed-switch
.end method
