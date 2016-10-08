.class final Lcom/xueqiu/android/trade/SetPatternActivity$3;
.super Ljava/lang/Object;
.source "SetPatternActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/SetPatternActivity;->onBackPressed()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/SetPatternActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/SetPatternActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xueqiu/android/trade/SetPatternActivity$3;->a:Lcom/xueqiu/android/trade/SetPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity$3;->a:Lcom/xueqiu/android/trade/SetPatternActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/SetPatternActivity;->finish()V

    .line 116
    return-void
.end method
