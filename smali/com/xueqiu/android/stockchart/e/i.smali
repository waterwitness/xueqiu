.class public final Lcom/xueqiu/android/stockchart/e/i;
.super Ljava/lang/Object;
.source "Times.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/e/a;


# instance fields
.field public a:F

.field public b:Ljava/lang/String;

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
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/e/i;->a:F

    .line 16
    return-void
.end method

.method public final a()[F
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 41
    const/4 v1, 0x0

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/i;->a:F

    aput v2, v0, v1

    .line 43
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/e/i;->c:F

    .line 35
    return-void
.end method
