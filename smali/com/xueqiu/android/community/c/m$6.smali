.class final Lcom/xueqiu/android/community/c/m$6;
.super Ljava/lang/Object;
.source "PaidMentionFragment.java"

# interfaces
.implements Lcom/xueqiu/android/base/util/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/m;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/xueqiu/android/community/c/m$6;->a:Lcom/xueqiu/android/community/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m$6;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/m;->j(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/d/a;

    .line 1062
    new-array v2, v5, [Ljava/lang/String;

    const v1, 0x7f070366

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    .line 1063
    new-array v3, v5, [Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%.0f"

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    .line 1064
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/community/d/a$2;

    iget-object v1, v0, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    check-cast v1, Lcom/xueqiu/android/community/c/m;

    invoke-direct {v5, v0, v1, p1, p2}, Lcom/xueqiu/android/community/d/a$2;-><init>(Lcom/xueqiu/android/community/d/a;Lcom/xueqiu/android/base/b/q;D)V

    invoke-virtual {v4, v2, v3, v5}, Lcom/xueqiu/android/base/b/ai;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 266
    return-void
.end method
