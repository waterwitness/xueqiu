.class public final Lcom/xueqiu/android/trade/patternlock/g;
.super Ljava/lang/Object;
.source "PatternView.java"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput v1, p0, Lcom/xueqiu/android/trade/patternlock/g;->a:F

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/g;->b:F

    .line 209
    iput v1, p0, Lcom/xueqiu/android/trade/patternlock/g;->c:F

    return-void
.end method
