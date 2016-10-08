.class public final Lcom/xueqiu/chart/b/e;
.super Lcom/xueqiu/chart/b/b;
.source "Label.java"


# instance fields
.field public f:Landroid/text/TextPaint;

.field public g:I

.field public h:Lcom/xueqiu/chart/c/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xueqiu/chart/b/b;-><init>()V

    .line 22
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 26
    new-instance v0, Lcom/xueqiu/chart/b/e$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/chart/b/e$1;-><init>(Lcom/xueqiu/chart/b/e;)V

    iput-object v0, p0, Lcom/xueqiu/chart/b/e;->h:Lcom/xueqiu/chart/c/d;

    .line 19
    iget-object v0, p0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 20
    return-void
.end method
