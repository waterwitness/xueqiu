.class public final Lcom/alipay/sdk/b/f;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lorg/json/JSONObject;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Lcom/alipay/sdk/b/a;

.field k:[Lorg/apache/http/Header;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/b/f;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/b/f;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/sdk/b/f;->c:J

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/b/f;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/b/f;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/b/f;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/b/f;->g:Lorg/json/JSONObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/b/f;->i:Z

    iput-object v2, p0, Lcom/alipay/sdk/b/f;->j:Lcom/alipay/sdk/b/a;

    iput-object v2, p0, Lcom/alipay/sdk/b/f;->k:[Lorg/apache/http/Header;

    return-void
.end method
