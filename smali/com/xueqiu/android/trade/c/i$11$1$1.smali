.class final Lcom/xueqiu/android/trade/c/i$11$1$1;
.super Ljava/lang/Object;
.source "PerformanceItemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/i$11$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/i$11$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/i$11$1;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i$11$1$1;->a:Lcom/xueqiu/android/trade/c/i$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$11$1$1;->a:Lcom/xueqiu/android/trade/c/i$11$1;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/i$11$1;->c:Lcom/xueqiu/android/trade/c/i$11;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/i$11;->a:Lcom/xueqiu/android/trade/c/i;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$11$1$1;->a:Lcom/xueqiu/android/trade/c/i$11$1;

    iget-object v1, v1, Lcom/xueqiu/android/trade/c/i$11$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/i;->c(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)V

    .line 706
    return-void
.end method
