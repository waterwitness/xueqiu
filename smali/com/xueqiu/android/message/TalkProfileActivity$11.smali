.class final Lcom/xueqiu/android/message/TalkProfileActivity$11;
.super Ljava/lang/Object;
.source "TalkProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ai;

.field final synthetic b:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/ai;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    iput-object p2, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->a:Lcom/xueqiu/android/base/b/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->a:Lcom/xueqiu/android/base/b/ai;

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->e(Lcom/xueqiu/android/message/TalkProfileActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->f(Lcom/xueqiu/android/message/TalkProfileActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    new-instance v4, Lcom/xueqiu/android/message/TalkProfileActivity$11$1;

    iget-object v5, p0, Lcom/xueqiu/android/message/TalkProfileActivity$11;->b:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {v4, p0, v5}, Lcom/xueqiu/android/message/TalkProfileActivity$11$1;-><init>(Lcom/xueqiu/android/message/TalkProfileActivity$11;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->a(JZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 238
    return-void
.end method
