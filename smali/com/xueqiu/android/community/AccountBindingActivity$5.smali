.class final Lcom/xueqiu/android/community/AccountBindingActivity$5;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/AccountBindingActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/community/AccountBindingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$5;->b:Lcom/xueqiu/android/community/AccountBindingActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/AccountBindingActivity$5;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$5;->b:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->b(Lcom/xueqiu/android/community/AccountBindingActivity;Ljava/lang/String;)V

    .line 553
    return-void
.end method
