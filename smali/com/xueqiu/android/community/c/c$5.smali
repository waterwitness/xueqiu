.class final Lcom/xueqiu/android/community/c/c$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/c;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/xueqiu/android/community/c/c$5;->a:Lcom/xueqiu/android/community/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public final b_(I)V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$5;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/c/c;->a(Lcom/xueqiu/android/community/c/c;I)I

    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$5;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->f(Lcom/xueqiu/android/community/c/c;)[Lcom/xueqiu/android/community/c/d;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$5;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->f(Lcom/xueqiu/android/community/c/c;)[Lcom/xueqiu/android/community/c/d;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$5;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->g(Lcom/xueqiu/android/community/c/c;)Lcom/xueqiu/android/community/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/community/c/f;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/c/d;

    aput-object v0, v1, p1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$5;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->f(Lcom/xueqiu/android/community/c/c;)[Lcom/xueqiu/android/community/c/d;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/d;->C_()V

    .line 320
    iget-object v0, p0, Lcom/xueqiu/android/community/c/c$5;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/c;->h(Lcom/xueqiu/android/community/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/UserGroup;

    .line 321
    iget-object v1, p0, Lcom/xueqiu/android/community/c/c$5;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/c;->f(Lcom/xueqiu/android/community/c/c;)[Lcom/xueqiu/android/community/c/d;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/xueqiu/android/community/c/c$5;->a:Lcom/xueqiu/android/community/c/c;

    invoke-static {v2}, Lcom/xueqiu/android/community/c/c;->i(Lcom/xueqiu/android/community/c/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/c/d;->b(Ljava/lang/String;)V

    .line 322
    if-eqz v0, :cond_1

    .line 323
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x514

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 324
    const-string v2, "group_name"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/UserGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 325
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 327
    :cond_1
    return-void
.end method
