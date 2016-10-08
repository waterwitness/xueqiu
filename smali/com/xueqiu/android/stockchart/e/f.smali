.class public final Lcom/xueqiu/android/stockchart/e/f;
.super Ljava/lang/Object;
.source "OHLCMA.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/e/a;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public final a()[F
    .locals 3

    .prologue
    .line 128
    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 130
    const/4 v1, 0x0

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/f;->a:F

    aput v2, v0, v1

    .line 131
    const/4 v1, 0x1

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/f;->b:F

    aput v2, v0, v1

    .line 132
    const/4 v1, 0x2

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/f;->c:F

    aput v2, v0, v1

    .line 133
    const/4 v1, 0x3

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/f;->d:F

    aput v2, v0, v1

    .line 134
    const/4 v1, 0x4

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/f;->e:F

    aput v2, v0, v1

    .line 135
    const/4 v1, 0x5

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/f;->f:F

    aput v2, v0, v1

    .line 136
    const/4 v1, 0x6

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/f;->g:F

    aput v2, v0, v1

    .line 137
    const/4 v1, 0x7

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/f;->h:F

    aput v2, v0, v1

    .line 139
    return-object v0
.end method
