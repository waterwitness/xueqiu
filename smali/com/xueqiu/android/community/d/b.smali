.class public Lcom/xueqiu/android/community/d/b;
.super Ljava/lang/Object;
.source "ReplierProfilePresenter.java"

# interfaces
.implements Lcom/xueqiu/android/community/b/e;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Z

.field private c:Lcom/xueqiu/android/community/b/f;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/xueqiu/android/community/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/community/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xueqiu/android/community/b/f;J)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/d/b;->a:Z

    .line 29
    iput-object p1, p0, Lcom/xueqiu/android/community/d/b;->c:Lcom/xueqiu/android/community/b/f;

    .line 30
    iput-wide p2, p0, Lcom/xueqiu/android/community/d/b;->d:J

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/d/b;)Lcom/xueqiu/android/community/b/f;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xueqiu/android/community/d/b;->c:Lcom/xueqiu/android/community/b/f;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/d/b;Lcom/xueqiu/android/community/model/User;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3052
    sget-object v0, Lcom/xueqiu/android/community/d/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleUserInfoResponse user.isVerifiedRealName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->isVerifiedRealName()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->isVerifiedRealName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3054
    iput-boolean v4, p0, Lcom/xueqiu/android/community/d/b;->a:Z

    .line 3055
    iget-object v0, p0, Lcom/xueqiu/android/community/d/b;->c:Lcom/xueqiu/android/community/b/f;

    invoke-interface {v0}, Lcom/xueqiu/android/community/b/f;->j()V

    .line 3061
    :goto_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3062
    iget-object v0, p0, Lcom/xueqiu/android/community/d/b;->c:Lcom/xueqiu/android/community/b/f;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/xueqiu/android/community/b/f;->a(ZLcom/xueqiu/android/community/model/UserVerifyType;)V

    .line 3066
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/d/b;->c:Lcom/xueqiu/android/community/b/f;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/community/b/f;->a(Lcom/xueqiu/android/community/model/User;)V

    .line 17
    return-void

    .line 3057
    :cond_0
    iput-boolean v3, p0, Lcom/xueqiu/android/community/d/b;->a:Z

    .line 3059
    iget-object v0, p0, Lcom/xueqiu/android/community/d/b;->c:Lcom/xueqiu/android/community/b/f;

    invoke-interface {v0}, Lcom/xueqiu/android/community/b/f;->j()V

    goto :goto_0

    .line 3064
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/d/b;->c:Lcom/xueqiu/android/community/b/f;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/xueqiu/android/community/b/f;->a(ZLcom/xueqiu/android/community/model/UserVerifyType;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 97
    iget-wide v2, p0, Lcom/xueqiu/android/community/d/b;->d:J

    .line 2036
    sget-object v0, Lcom/xueqiu/android/community/d/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getUserInfo userId = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    new-instance v1, Lcom/xueqiu/android/community/d/b$1;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/b;->c:Lcom/xueqiu/android/community/b/f;

    check-cast v0, Lcom/xueqiu/android/community/ReplierProfileActivity;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/community/d/b$1;-><init>(Lcom/xueqiu/android/community/d/b;Lcom/xueqiu/android/base/b/q;)V

    .line 2048
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 98
    iget-wide v2, p0, Lcom/xueqiu/android/community/d/b;->d:J

    .line 2077
    new-instance v1, Lcom/xueqiu/android/community/d/b$2;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/b;->c:Lcom/xueqiu/android/community/b/f;

    check-cast v0, Lcom/xueqiu/android/community/ReplierProfileActivity;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/community/d/b$2;-><init>(Lcom/xueqiu/android/community/d/b;Lcom/xueqiu/android/base/b/q;)V

    .line 2092
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 2263
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/base/b/an;->f(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 99
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
