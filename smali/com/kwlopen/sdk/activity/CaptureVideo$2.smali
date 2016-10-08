.class Lcom/kwlopen/sdk/activity/CaptureVideo$2;
.super Ljava/lang/Object;
.source "CaptureVideo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/CaptureVideo;->showDialog()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/CaptureVideo;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/CaptureVideo$2;->this$0:Lcom/kwlopen/sdk/activity/CaptureVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 634
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 635
    return-void
.end method
