.class public final Lcom/xueqiu/chart/b/g;
.super Lcom/xueqiu/chart/b/b;
.source "Legend.java"


# instance fields
.field public f:Landroid/text/TextPaint;

.field public g:Landroid/graphics/Paint;

.field public h:I

.field public i:I

.field public j:Lcom/xueqiu/chart/b/j;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10
    invoke-direct {p0}, Lcom/xueqiu/chart/b/b;-><init>()V

    .line 20
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Lcom/xueqiu/chart/b/j;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/j;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 30
    sget v0, Lcom/xueqiu/chart/b/i;->a:I

    iput v0, p0, Lcom/xueqiu/chart/b/g;->k:I

    .line 32
    sget v0, Lcom/xueqiu/chart/b/h;->a:I

    iput v0, p0, Lcom/xueqiu/chart/b/g;->l:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/chart/b/g;->m:I

    return-void
.end method
