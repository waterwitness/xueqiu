.class final Lcom/xueqiu/android/trade/patternlock/k$1;
.super Ljava/lang/Object;
.source "SetPatternFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/patternlock/k;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/patternlock/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/patternlock/k;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/xueqiu/android/trade/patternlock/k$1;->a:Lcom/xueqiu/android/trade/patternlock/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/k$1;->a:Lcom/xueqiu/android/trade/patternlock/k;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/n;->a:Lcom/xueqiu/android/trade/patternlock/n;

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/patternlock/k;->a(Lcom/xueqiu/android/trade/patternlock/k;Lcom/xueqiu/android/trade/patternlock/n;)V

    .line 246
    return-void
.end method
