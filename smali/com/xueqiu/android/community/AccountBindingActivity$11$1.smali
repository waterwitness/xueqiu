.class final Lcom/xueqiu/android/community/AccountBindingActivity$11$1;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/AccountBindingActivity$11;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity$11;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity$11;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11$1;->a:Lcom/xueqiu/android/community/AccountBindingActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11$1;->a:Lcom/xueqiu/android/community/AccountBindingActivity$11;

    iget-object v0, v0, Lcom/xueqiu/android/community/AccountBindingActivity$11;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const-string v1, "wc"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->a(Lcom/xueqiu/android/community/AccountBindingActivity;Ljava/lang/String;)V

    .line 247
    return-void
.end method
