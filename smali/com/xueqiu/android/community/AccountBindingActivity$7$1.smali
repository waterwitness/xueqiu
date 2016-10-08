.class final Lcom/xueqiu/android/community/AccountBindingActivity$7$1;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/AccountBindingActivity$7;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity$7;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity$7;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$7$1;->a:Lcom/xueqiu/android/community/AccountBindingActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$7$1;->a:Lcom/xueqiu/android/community/AccountBindingActivity$7;

    iget-object v0, v0, Lcom/xueqiu/android/community/AccountBindingActivity$7;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->a(Lcom/xueqiu/android/community/AccountBindingActivity;Ljava/lang/String;)V

    .line 143
    return-void
.end method
