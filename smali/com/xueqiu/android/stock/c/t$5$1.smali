.class final Lcom/xueqiu/android/stock/c/t$5$1;
.super Ljava/lang/Object;
.source "QuoteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/t$5;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/xueqiu/android/stock/c/t$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/t$5;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/t$5$1;->b:Lcom/xueqiu/android/stock/c/t$5;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/t$5$1;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$5$1;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 584
    return-void
.end method
