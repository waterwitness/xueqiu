.class final Lcom/xueqiu/android/message/a$10;
.super Ljava/lang/Object;
.source "GroupProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/message/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/xueqiu/android/message/a$10;->b:Lcom/xueqiu/android/message/a;

    iput-object p2, p0, Lcom/xueqiu/android/message/a$10;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/xueqiu/android/message/a$10;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/xueqiu/android/message/a$10;->b:Lcom/xueqiu/android/message/a;

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/a;->a(Lcom/xueqiu/android/message/a;Ljava/lang/String;)V

    .line 258
    return-void
.end method
