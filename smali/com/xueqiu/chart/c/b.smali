.class public final Lcom/xueqiu/chart/c/b;
.super Ljava/lang/Object;
.source "SimpleSigValueFinder.java"

# interfaces
.implements Lcom/xueqiu/chart/c/a;


# instance fields
.field a:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x18

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xueqiu/chart/c/b;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3ccccccd    # 0.025f
        0x3d4ccccd    # 0.05f
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40200000    # 2.5f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x41c80000    # 25.0f
        0x42480000    # 50.0f
        0x42c80000    # 100.0f
        0x437a0000    # 250.0f
        0x43fa0000    # 500.0f
        0x447a0000    # 1000.0f
        0x451c4000    # 2500.0f
        0x459c4000    # 5000.0f
        0x461c4000    # 10000.0f
        0x46c35000    # 25000.0f
        0x47435000    # 50000.0f
        0x47c35000    # 100000.0f
        0x48f42400    # 500000.0f
        0x49742400    # 1000000.0f
    .end array-data
.end method


# virtual methods
.method public final a(F)F
    .locals 5

    .prologue
    .line 17
    iget-object v2, p0, Lcom/xueqiu/chart/c/b;->a:[F

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, v2, v1

    .line 18
    cmpl-float v4, v0, p1

    if-ltz v4, :cond_0

    .line 22
    :goto_1
    return v0

    .line 17
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
