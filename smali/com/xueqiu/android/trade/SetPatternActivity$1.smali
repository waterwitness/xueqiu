.class final Lcom/xueqiu/android/trade/SetPatternActivity$1;
.super Ljava/lang/Object;
.source "SetPatternActivity.java"

# interfaces
.implements Lcom/xueqiu/android/trade/patternlock/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/SetPatternActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/ac;

.field final synthetic b:Lcom/xueqiu/android/trade/patternlock/b;

.field final synthetic c:Lcom/xueqiu/android/trade/SetPatternActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/SetPatternActivity;Landroid/support/v4/a/ac;Lcom/xueqiu/android/trade/patternlock/b;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/xueqiu/android/trade/SetPatternActivity$1;->c:Lcom/xueqiu/android/trade/SetPatternActivity;

    iput-object p2, p0, Lcom/xueqiu/android/trade/SetPatternActivity$1;->a:Landroid/support/v4/a/ac;

    iput-object p3, p0, Lcom/xueqiu/android/trade/SetPatternActivity$1;->b:Lcom/xueqiu/android/trade/patternlock/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity$1;->a:Landroid/support/v4/a/ac;

    iget-object v1, p0, Lcom/xueqiu/android/trade/SetPatternActivity$1;->b:Lcom/xueqiu/android/trade/patternlock/b;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity$1;->c:Lcom/xueqiu/android/trade/SetPatternActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/SetPatternActivity;->a(Lcom/xueqiu/android/trade/SetPatternActivity;)V

    .line 74
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity$1;->c:Lcom/xueqiu/android/trade/SetPatternActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/SetPatternActivity;->b(Lcom/xueqiu/android/trade/SetPatternActivity;)V

    .line 81
    :cond_0
    return-void
.end method
