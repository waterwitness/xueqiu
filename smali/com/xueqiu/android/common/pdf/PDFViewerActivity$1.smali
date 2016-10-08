.class final Lcom/xueqiu/android/common/pdf/PDFViewerActivity$1;
.super Landroid/os/Handler;
.source "PDFViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/pdf/PDFViewerActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$1;->a:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$1;->a:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->a(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;)Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$1;->a:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->a(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;)Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/pdf/RoundProgressBar;->setProgress(I)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$1;->a:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->b(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
