.class public abstract Lcom/xueqiu/chart/b/b;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget v0, Lcom/xueqiu/chart/b/c;->a:I

    iput v0, p0, Lcom/xueqiu/chart/b/b;->e:I

    .line 27
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/xueqiu/chart/b/b;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/xueqiu/chart/b/b;->a:I

    .line 37
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xueqiu/chart/b/b;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/xueqiu/chart/b/b;->b:I

    .line 45
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/xueqiu/chart/b/b;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/xueqiu/chart/b/b;->d:I

    .line 61
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lcom/xueqiu/chart/b/b;->c:I

    .line 53
    return-void
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/xueqiu/chart/b/b;->e:I

    .line 101
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/xueqiu/chart/b/b;->d:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/xueqiu/chart/b/b;->e:I

    return v0
.end method
