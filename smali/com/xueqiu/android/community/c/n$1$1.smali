.class final Lcom/xueqiu/android/community/c/n$1$1;
.super Ljava/lang/Object;
.source "PortfolioMoreDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/n$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/n$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/n$1;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/community/c/n$1$1;->a:Lcom/xueqiu/android/community/c/n$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/community/c/n$1$1;->a:Lcom/xueqiu/android/community/c/n$1;

    iget-object v0, v0, Lcom/xueqiu/android/community/c/n$1;->a:Lcom/xueqiu/android/community/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 80
    return-void
.end method
