.class final Lcom/xueqiu/android/trade/patternlock/a$1;
.super Ljava/lang/Object;
.source "BasePatternFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/patternlock/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/patternlock/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/patternlock/a;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/xueqiu/android/trade/patternlock/a$1;->a:Lcom/xueqiu/android/trade/patternlock/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a$1;->a:Lcom/xueqiu/android/trade/patternlock/a;

    iget-object v0, v0, Lcom/xueqiu/android/trade/patternlock/a;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    .line 1443
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->a()V

    .line 31
    return-void
.end method
