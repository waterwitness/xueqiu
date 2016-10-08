.class final Lcom/xueqiu/android/community/c/l$3;
.super Ljava/lang/Object;
.source "PaidContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/l;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/xueqiu/android/community/c/l$3;->a:Lcom/xueqiu/android/community/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l$3;->a:Lcom/xueqiu/android/community/c/l;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 150
    return-void
.end method
