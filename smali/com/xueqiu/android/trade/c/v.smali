.class Lcom/xueqiu/android/trade/c/v;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/s;

.field dayIncomeBalance:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field dayIncomeRate:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field totalIncomeBalance:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/trade/c/s;)V
    .locals 0

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/v;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/trade/c/s;B)V
    .locals 0

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/v;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    return-void
.end method
