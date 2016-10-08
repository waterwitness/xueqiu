.class Lcom/kwlopen/sdk/activity/SelectPicActivity$1;
.super Landroid/os/Handler;
.source "SelectPicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwlopen/sdk/activity/SelectPicActivity;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/SelectPicActivity;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/SelectPicActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity$1;->this$0:Lcom/kwlopen/sdk/activity/SelectPicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 226
    invoke-static {}, Lcom/b/a/a/c;->a()V

    .line 227
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 228
    new-instance v1, Lcom/kwlopen/sdk/camera/b;

    invoke-direct {v1}, Lcom/kwlopen/sdk/camera/b;-><init>()V

    .line 1010
    iput-object v0, v1, Lcom/kwlopen/sdk/camera/b;->a:Ljava/lang/String;

    .line 231
    invoke-static {}, Lb/a/a/c;->a()Lb/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/a/a/c;->b(Ljava/lang/Object;)V

    .line 233
    :cond_0
    return-void
.end method
