.class Lcom/pingan/main/PAVideoSdkApiManager$2;
.super Ljava/lang/Thread;
.source "PAVideoSdkApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/main/PAVideoSdkApiManager;->nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/main/PAVideoSdkApiManager;

.field private final synthetic val$channel:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pingan/main/PAVideoSdkApiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    iput-object p2, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$channel:Ljava/lang/String;

    iput-object p3, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$context:Landroid/content/Context;

    .line 287
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x1a4

    const/4 v5, 0x0

    .line 290
    # getter for: Lcom/pingan/main/PAVideoSdkApiManager;->authFlag:Z
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->access$0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    sget-object v0, Lcom/letpower/engine/LDEngineDemo;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    # getter for: Lcom/pingan/main/PAVideoSdkApiManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/pingan/main/PAVideoSdkApiManager;->access$1()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$channel:Ljava/lang/String;

    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/letpower/engine/AndroidJavaAPI;->NativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 293
    if-gez v0, :cond_1

    .line 294
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    # getter for: Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I
    invoke-static {v1}, Lcom/pingan/main/PAVideoSdkApiManager;->access$2(Lcom/pingan/main/PAVideoSdkApiManager;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 295
    const-string v0, "PAVideoSdkApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initAPI \u5931\u8d25\uff0c\u8fdb\u5165\u91cd\u8bd5\uff01authCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    # getter for: Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I
    invoke-static {v2}, Lcom/pingan/main/PAVideoSdkApiManager;->access$2(Lcom/pingan/main/PAVideoSdkApiManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    # getter for: Lcom/pingan/main/PAVideoSdkApiManager;->authCount:I
    invoke-static {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->access$2(Lcom/pingan/main/PAVideoSdkApiManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->access$3(Lcom/pingan/main/PAVideoSdkApiManager;I)V

    .line 297
    invoke-static {v5}, Lcom/pingan/main/PAVideoSdkApiManager;->access$4(Z)V

    .line 298
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$channel:Ljava/lang/String;

    iget-object v3, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pingan/main/PAVideoSdkApiManager;->nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "initAPI \u4e94\u6b21\u91cd\u8bd5\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {v5}, Lcom/pingan/main/PAVideoSdkApiManager;->access$4(Z)V

    .line 302
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    const/16 v2, 0x190

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Lcom/pingan/main/PAVideoSdkApiManager;->access$5(Lcom/pingan/main/PAVideoSdkApiManager;ILjava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-static {v0, v5}, Lcom/pingan/main/PAVideoSdkApiManager;->access$3(Lcom/pingan/main/PAVideoSdkApiManager;I)V

    goto :goto_0

    .line 306
    :cond_1
    const-string v1, "PAVideoSdkApiManager"

    const-string v2, "initAPI \u6210\u529f"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/pingan/main/PAVideoSdkApiManager;->access$4(Z)V

    .line 308
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-static {v1, v5}, Lcom/pingan/main/PAVideoSdkApiManager;->access$3(Lcom/pingan/main/PAVideoSdkApiManager;I)V

    .line 309
    iget-object v1, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V
    invoke-static {v1, v6, v0}, Lcom/pingan/main/PAVideoSdkApiManager;->access$5(Lcom/pingan/main/PAVideoSdkApiManager;ILjava/lang/Object;)V

    goto :goto_0

    .line 312
    :cond_2
    const-string v0, "PAVideoSdkApiManager"

    const-string v1, "initAPI--\u5df2\u7ecf\u662f\u8ba4\u8bc1\u6210\u529f\u7684\u72b6\u6001"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$2;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    const-string v1, "0"

    # invokes: Lcom/pingan/main/PAVideoSdkApiManager;->outputAVCallStatus(ILjava/lang/Object;)V
    invoke-static {v0, v6, v1}, Lcom/pingan/main/PAVideoSdkApiManager;->access$5(Lcom/pingan/main/PAVideoSdkApiManager;ILjava/lang/Object;)V

    goto :goto_0
.end method
