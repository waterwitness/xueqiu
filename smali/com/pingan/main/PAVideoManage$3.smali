.class Lcom/pingan/main/PAVideoManage$3;
.super Ljava/lang/Thread;
.source "PAVideoManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/main/PAVideoManage;->LSAuth()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/main/PAVideoManage;


# direct methods
.method constructor <init>(Lcom/pingan/main/PAVideoManage;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/pingan/main/PAVideoManage$3;->this$0:Lcom/pingan/main/PAVideoManage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 718
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    # getter for: Lcom/pingan/main/PAVideoManage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fdb\u5165\u8ba4\u8bc1--"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    # getter for: Lcom/pingan/main/PAVideoManage;->configEnvironment:I
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$1100()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 725
    # getter for: Lcom/pingan/main/PAVideoManage;->configEnvironment:I
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$1100()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 726
    # getter for: Lcom/pingan/main/PAVideoManage;->configEnvironment:I
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$1100()I

    move-result v0

    if-nez v0, :cond_2

    .line 727
    :cond_0
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    sget-object v1, Lcom/pingan/a;->a:Ljava/lang/String;

    const-string v2, "CDG010"

    const-string v3, "988275de9690c6b1d23c31322966ca12"

    const-string v4, "test-mcscams.dmzstg1.pingan.com.cn:5080"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pingan/main/PAVideoSdkApiManager;->initAPI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_1
    :goto_1
    return-void

    .line 720
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 730
    :cond_2
    # getter for: Lcom/pingan/main/PAVideoManage;->configEnvironment:I
    invoke-static {}, Lcom/pingan/main/PAVideoManage;->access$1100()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 731
    sget-object v0, Lcom/pingan/main/PAVideoManage;->PASDKAPI:Lcom/pingan/main/PAVideoSdkApiManager;

    sget-object v1, Lcom/pingan/a;->a:Ljava/lang/String;

    const-string v2, "ZQprd01A"

    const-string v3, "06c81d590af7b7c332e0a81a78d689b1"

    const-string v4, "mcscams.pingan.com.cn:80"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pingan/main/PAVideoSdkApiManager;->initAPI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
