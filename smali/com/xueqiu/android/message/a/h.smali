.class public final Lcom/xueqiu/android/message/a/h;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/d;

.field private b:Lcom/xueqiu/android/message/model/Message;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/message/model/Message;)V
    .locals 0

    .prologue
    .line 942
    iput-object p1, p0, Lcom/xueqiu/android/message/a/h;->a:Lcom/xueqiu/android/message/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iput-object p2, p0, Lcom/xueqiu/android/message/a/h;->b:Lcom/xueqiu/android/message/model/Message;

    .line 944
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/xueqiu/android/message/a/h;->a:Lcom/xueqiu/android/message/a/d;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/h;->b:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0, p1, v1}, Lcom/xueqiu/android/message/a/d;->a(Landroid/view/View;Lcom/xueqiu/android/message/model/Message;)Z

    move-result v0

    return v0
.end method
