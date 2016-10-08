.class public final Lcom/xueqiu/chart/b/d;
.super Ljava/lang/Object;
.source "Grid.java"


# instance fields
.field public a:Z

.field public b:Landroid/graphics/Paint;

.field public c:I

.field public d:F

.field public e:F

.field public f:Lcom/xueqiu/chart/c/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x3dcccccd    # 0.1f

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/chart/b/d;->a:Z

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 18
    const/4 v0, 0x4

    iput v0, p0, Lcom/xueqiu/chart/b/d;->c:I

    .line 20
    iput v2, p0, Lcom/xueqiu/chart/b/d;->d:F

    .line 22
    iput v2, p0, Lcom/xueqiu/chart/b/d;->e:F

    .line 24
    new-instance v0, Lcom/xueqiu/chart/c/b;

    invoke-direct {v0}, Lcom/xueqiu/chart/c/b;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/b/d;->f:Lcom/xueqiu/chart/c/a;

    return-void
.end method
