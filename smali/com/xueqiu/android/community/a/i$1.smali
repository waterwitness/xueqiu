.class final Lcom/xueqiu/android/community/a/i$1;
.super Ljava/lang/Object;
.source "PaidCommentListAdapter.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/i;-><init>(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/i;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/xueqiu/android/community/a/i$1;->a:Lcom/xueqiu/android/community/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/community/a/i$1;->a:Lcom/xueqiu/android/community/a/i;

    .line 1089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 73
    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/community/a/i$1;->a:Lcom/xueqiu/android/community/a/i;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/i$1;->a:Lcom/xueqiu/android/community/a/i;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 74
    const v2, 0x7f070164

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a/i;->a(Lcom/xueqiu/android/community/a/i;F)F

    .line 76
    :cond_0
    return-void
.end method
