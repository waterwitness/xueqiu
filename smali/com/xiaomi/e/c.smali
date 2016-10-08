.class public Lcom/xiaomi/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field private a:Z

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field private i:Lcom/xiaomi/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "wcc-ml-test10.bj"

    sput-object v0, Lcom/xiaomi/e/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/e/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/xiaomi/e/a;->a:Z

    iput-boolean v0, p0, Lcom/xiaomi/e/c;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/e/c;->a:Z

    .line 1000
    invoke-static {}, Lcom/xiaomi/e/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/e/c;->e:Ljava/lang/String;

    const/16 v0, 0x1466

    iput v0, p0, Lcom/xiaomi/e/c;->f:I

    iput-object p1, p0, Lcom/xiaomi/e/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/e/c;->i:Lcom/xiaomi/e/f;

    .line 0
    return-void
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/e/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/e/c;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "app.chat.xiaomi.net"

    goto :goto_0
.end method


# virtual methods
.method public a()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
