.class final Lcom/xueqiu/android/community/AccountBindingActivity$14;
.super Lcom/xueqiu/android/base/b/p;
.source "AccountBindingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/AccountBindingActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$14;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$14;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->i()V

    .line 316
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 317
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 312
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1321
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$14;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->i()V

    .line 1322
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$14;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/AccountBindingActivity;->a(Lcom/xueqiu/android/community/AccountBindingActivity;Lcom/google/gson/JsonObject;)V

    .line 1323
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$14;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->m(Lcom/xueqiu/android/community/AccountBindingActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1324
    const-string v1, "bound_info"

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 312
    return-void
.end method
