.class final Lcom/xueqiu/android/community/TopicWordActivity$5;
.super Ljava/lang/Object;
.source "TopicWordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/TopicWordActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicWordActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicWordActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicWordActivity$5;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$5;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/TopicWordActivity;->finish()V

    .line 188
    return-void
.end method
