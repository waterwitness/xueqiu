.class public final Lcom/xueqiu/android/stockchart/e/d;
.super Ljava/lang/Object;
.source "FundDataModel.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/e/a;


# instance fields
.field public a:F

.field public b:Ljava/lang/String;


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
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 29
    const/4 v1, 0x0

    iget v2, p0, Lcom/xueqiu/android/stockchart/e/d;->a:F

    aput v2, v0, v1

    .line 30
    return-object v0
.end method
