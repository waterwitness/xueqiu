.class public final Lcom/xueqiu/android/stockchart/e/e;
.super Ljava/lang/Object;
.source "MACD.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/e/a;


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[F
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 40
    const/4 v1, 0x0

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/e;->a:F

    aput v2, v0, v1

    .line 41
    const/4 v1, 0x1

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/e;->b:F

    aput v2, v0, v1

    .line 42
    const/4 v1, 0x2

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/e;->c:F

    aput v2, v0, v1

    .line 44
    return-object v0
.end method
