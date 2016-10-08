.class Lcom/kwlopen/sdk/activity/VideoPlayActivity$4;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/VideoPlayActivity;->showDialog()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$4;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    const-string v1, "type"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$4;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->setResult(ILandroid/content/Intent;)V

    .line 434
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$4;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->finish()V

    .line 435
    return-void
.end method
