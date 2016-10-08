.class final Lcom/xueqiu/android/message/a/d$5;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/message/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d$5;->b:Lcom/xueqiu/android/message/a/d;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/d$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$5;->b:Lcom/xueqiu/android/message/a/d;

    invoke-static {v1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 307
    return-void
.end method
