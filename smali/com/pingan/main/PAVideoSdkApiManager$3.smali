.class Lcom/pingan/main/PAVideoSdkApiManager$3;
.super Landroid/view/OrientationEventListener;
.source "PAVideoSdkApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/main/PAVideoSdkApiManager;->setOrientation(Z)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/main/PAVideoSdkApiManager;

.field private final synthetic val$isNeedOrientation:Z


# direct methods
.method constructor <init>(Lcom/pingan/main/PAVideoSdkApiManager;Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pingan/main/PAVideoSdkApiManager$3;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    iput-boolean p4, p0, Lcom/pingan/main/PAVideoSdkApiManager$3;->val$isNeedOrientation:Z

    .line 1023
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$3;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    # invokes: Lcom/pingan/main/PAVideoSdkApiManager;->compensateRotation(I)V
    invoke-static {v0, p1}, Lcom/pingan/main/PAVideoSdkApiManager;->access$6(Lcom/pingan/main/PAVideoSdkApiManager;I)V

    .line 1026
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1029
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x15e

    if-le p1, v0, :cond_2

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$3;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    # getter for: Lcom/pingan/main/PAVideoSdkApiManager;->requestedOrientation:I
    invoke-static {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->access$7(Lcom/pingan/main/PAVideoSdkApiManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1033
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$3;->val$isNeedOrientation:Z

    if-nez v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$3;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    # getter for: Lcom/pingan/main/PAVideoSdkApiManager;->orientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->access$8(Lcom/pingan/main/PAVideoSdkApiManager;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1052
    :cond_1
    :goto_0
    return-void

    .line 1037
    :cond_2
    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    const/16 v0, 0x50

    if-gt p1, v0, :cond_1

    .line 1040
    :cond_3
    const/16 v0, 0xbe

    if-ge p1, v0, :cond_4

    const/16 v0, 0xaa

    if-gt p1, v0, :cond_1

    .line 1043
    :cond_4
    const/16 v0, 0x118

    if-ge p1, v0, :cond_1

    const/16 v0, 0x104

    if-le p1, v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$3;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    # getter for: Lcom/pingan/main/PAVideoSdkApiManager;->requestedOrientation:I
    invoke-static {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->access$7(Lcom/pingan/main/PAVideoSdkApiManager;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1047
    iget-boolean v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$3;->val$isNeedOrientation:Z

    if-nez v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/pingan/main/PAVideoSdkApiManager$3;->this$0:Lcom/pingan/main/PAVideoSdkApiManager;

    # getter for: Lcom/pingan/main/PAVideoSdkApiManager;->orientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/pingan/main/PAVideoSdkApiManager;->access$8(Lcom/pingan/main/PAVideoSdkApiManager;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method
