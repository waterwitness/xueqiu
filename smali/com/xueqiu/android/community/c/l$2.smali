.class final Lcom/xueqiu/android/community/c/l$2;
.super Ljava/lang/Object;
.source "PaidContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/l;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/xueqiu/android/community/c/l$2;->a:Lcom/xueqiu/android/community/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l$2;->a:Lcom/xueqiu/android/community/c/l;

    const-string v1, "comment"

    .line 1054
    iput-object v1, v0, Lcom/xueqiu/android/community/c/l;->a:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l$2;->a:Lcom/xueqiu/android/community/c/l;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/l;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const-string v1, "paid_page_type"

    const-string v2, "comment"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/community/c/l$2;->a:Lcom/xueqiu/android/community/c/l;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/l;->u()V

    .line 140
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xc21

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 142
    const-string v1, "type"

    const-string v2, "comment"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 144
    return-void
.end method
