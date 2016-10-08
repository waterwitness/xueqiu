.class public final enum Lcom/snowballfinance/messageplatform/b/c;
.super Ljava/lang/Enum;
.source "Images.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/messageplatform/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snowballfinance/messageplatform/b/c;

.field public static final enum b:Lcom/snowballfinance/messageplatform/b/c;

.field public static final enum c:Lcom/snowballfinance/messageplatform/b/c;

.field public static final enum d:Lcom/snowballfinance/messageplatform/b/c;

.field private static final synthetic e:[Lcom/snowballfinance/messageplatform/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/snowballfinance/messageplatform/b/c;

    const-string v1, "USER_PROFILE_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/c;->a:Lcom/snowballfinance/messageplatform/b/c;

    new-instance v0, Lcom/snowballfinance/messageplatform/b/c;

    const-string v1, "POST_IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/messageplatform/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/c;->b:Lcom/snowballfinance/messageplatform/b/c;

    new-instance v0, Lcom/snowballfinance/messageplatform/b/c;

    const-string v1, "IM_PROFILE_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/snowballfinance/messageplatform/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/c;->c:Lcom/snowballfinance/messageplatform/b/c;

    new-instance v0, Lcom/snowballfinance/messageplatform/b/c;

    const-string v1, "IM_IMAGE"

    invoke-direct {v0, v1, v5}, Lcom/snowballfinance/messageplatform/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/b/c;->d:Lcom/snowballfinance/messageplatform/b/c;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snowballfinance/messageplatform/b/c;

    sget-object v1, Lcom/snowballfinance/messageplatform/b/c;->a:Lcom/snowballfinance/messageplatform/b/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snowballfinance/messageplatform/b/c;->b:Lcom/snowballfinance/messageplatform/b/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowballfinance/messageplatform/b/c;->c:Lcom/snowballfinance/messageplatform/b/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowballfinance/messageplatform/b/c;->d:Lcom/snowballfinance/messageplatform/b/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snowballfinance/messageplatform/b/c;->e:[Lcom/snowballfinance/messageplatform/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/b/c;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/snowballfinance/messageplatform/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/b/c;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/messageplatform/b/c;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/snowballfinance/messageplatform/b/c;->e:[Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {v0}, [Lcom/snowballfinance/messageplatform/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/messageplatform/b/c;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/b/c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snowballfinance/messageplatform/b/c;->a:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "http://xavatar.imedao.com"

    .line 34
    :goto_0
    return-object v0

    .line 25
    :cond_0
    sget-object v0, Lcom/snowballfinance/messageplatform/b/c;->b:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const-string v0, "http://xqimg.imedao.com"

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lcom/snowballfinance/messageplatform/b/c;->c:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    const-string v0, "http://mavatar.imedao.com"

    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lcom/snowballfinance/messageplatform/b/c;->d:Lcom/snowballfinance/messageplatform/b/c;

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    const-string v0, "http://xueqiu.com"

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method
