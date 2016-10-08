.class final Lcom/xueqiu/android/community/AccountBindingActivity$8$2;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/AccountBindingActivity$8;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity$8;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity$8;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8$2;->a:Lcom/xueqiu/android/community/AccountBindingActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8$2;->a:Lcom/xueqiu/android/community/AccountBindingActivity$8;

    iget-object v0, v0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->e(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8$2;->a:Lcom/xueqiu/android/community/AccountBindingActivity$8;

    iget-object v0, v0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->b(Lcom/xueqiu/android/community/AccountBindingActivity;)Lcom/xueqiu/android/base/b/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ap;->a()V

    .line 175
    return-void
.end method
