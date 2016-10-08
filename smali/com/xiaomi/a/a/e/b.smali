.class public final Lcom/xiaomi/a/a/e/b;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/xiaomi/a/a/e/a;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/a/a/e/a;

    invoke-direct {v0}, Lcom/xiaomi/a/a/e/a;-><init>()V

    sput-object v0, Lcom/xiaomi/a/a/e/b;->d:Lcom/xiaomi/a/a/e/a;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/a/a/e/b;->a:I

    iput-object p1, p0, Lcom/xiaomi/a/a/e/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a()Lcom/xiaomi/a/a/e/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/a/a/e/b;->d:Lcom/xiaomi/a/a/e/a;

    return-object v0
.end method
