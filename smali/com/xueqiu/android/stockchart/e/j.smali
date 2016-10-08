.class public final Lcom/xueqiu/android/stockchart/e/j;
.super Ljava/lang/Object;
.source "Volume.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/e/a;


# instance fields
.field public a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/e/j;->a:F

    .line 13
    return-void
.end method

.method public final a()[F
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 20
    const/4 v1, 0x0

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/j;->a:F

    aput v2, v0, v1

    .line 21
    return-object v0
.end method
