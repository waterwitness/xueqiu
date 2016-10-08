.class Lcom/kwlopen/sdk/activity/VideoPlayActivity$3;
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
    .line 436
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$3;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 440
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 441
    return-void
.end method
