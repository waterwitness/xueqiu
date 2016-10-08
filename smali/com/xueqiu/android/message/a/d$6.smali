.class final Lcom/xueqiu/android/message/a/d$6;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Message;

.field final synthetic b:Lcom/xueqiu/android/message/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/message/model/Message;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d$6;->b:Lcom/xueqiu/android/message/a/d;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/d$6;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d$6;->b:Lcom/xueqiu/android/message/a/d;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d$6;->a:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, p1, v1}, Lcom/xueqiu/android/message/a/d;->a(Landroid/view/View;Lcom/xueqiu/android/message/model/Message;)Z

    .line 330
    return-void
.end method
