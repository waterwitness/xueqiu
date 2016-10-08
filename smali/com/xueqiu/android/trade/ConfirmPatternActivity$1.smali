.class final Lcom/xueqiu/android/trade/ConfirmPatternActivity$1;
.super Ljava/lang/Object;
.source "ConfirmPatternActivity.java"

# interfaces
.implements Lcom/xueqiu/android/trade/patternlock/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/ConfirmPatternActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/ConfirmPatternActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity$1;->a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity$1;->a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->setResult(I)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity$1;->a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->finish()V

    .line 61
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity$1;->a:Lcom/xueqiu/android/trade/ConfirmPatternActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->a(Lcom/xueqiu/android/trade/ConfirmPatternActivity;)V

    .line 68
    :cond_0
    return-void
.end method
