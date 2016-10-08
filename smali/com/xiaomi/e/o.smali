.class public final Lcom/xiaomi/e/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/xiaomi/e/o;

.field public static final b:Lcom/xiaomi/e/o;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/e/o;

    const-string v1, "result"

    invoke-direct {v0, v1}, Lcom/xiaomi/e/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/e/o;->a:Lcom/xiaomi/e/o;

    new-instance v0, Lcom/xiaomi/e/o;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/xiaomi/e/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/e/o;->b:Lcom/xiaomi/e/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/e/o;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/e/o;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/e/o;->b:Lcom/xiaomi/e/o;

    invoke-virtual {v2}, Lcom/xiaomi/e/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/xiaomi/e/o;->b:Lcom/xiaomi/e/o;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/xiaomi/e/o;->a:Lcom/xiaomi/e/o;

    invoke-virtual {v2}, Lcom/xiaomi/e/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/xiaomi/e/o;->a:Lcom/xiaomi/e/o;

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/e/o;->c:Ljava/lang/String;

    return-object v0
.end method
