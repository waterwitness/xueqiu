.class final Lcom/xueqiu/android/community/AccountBindingActivity$9$1;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/AccountBindingActivity$9;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity$9;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity$9;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9$1;->a:Lcom/xueqiu/android/community/AccountBindingActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9$1;->a:Lcom/xueqiu/android/community/AccountBindingActivity$9;

    iget-object v0, v0, Lcom/xueqiu/android/community/AccountBindingActivity$9;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const-string v1, "qq"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->a(Lcom/xueqiu/android/community/AccountBindingActivity;Ljava/lang/String;)V

    .line 197
    return-void
.end method
