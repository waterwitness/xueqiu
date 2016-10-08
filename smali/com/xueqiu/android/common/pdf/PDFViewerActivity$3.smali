.class final Lcom/xueqiu/android/common/pdf/PDFViewerActivity$3;
.super Ljava/lang/Object;
.source "PDFViewerActivity.java"

# interfaces
.implements Lcom/a/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$3;->b:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$3;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 210
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$3;->b:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    iget-boolean v0, v0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->j:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$3;->b:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->j:Z

    .line 213
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$3;->a:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$3;->b:Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
