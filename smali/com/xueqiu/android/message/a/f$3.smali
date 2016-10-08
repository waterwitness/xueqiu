.class final Lcom/xueqiu/android/message/a/f$3;
.super Lcom/d/a/b/f/d;
.source "ChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/f;->a(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/ChatActivity;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/message/a/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/xueqiu/android/message/a/f$3;->b:Lcom/xueqiu/android/message/a/f;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/f$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/d/a/b/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 736
    invoke-super {p0, p1, p2, p3}, Lcom/d/a/b/f/d;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 737
    iget-object v0, p0, Lcom/xueqiu/android/message/a/f$3;->b:Lcom/xueqiu/android/message/a/f;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/f;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/f$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 738
    return-void
.end method
