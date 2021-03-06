PHP_ARG_ENABLE(phalcon, whether to enable phalcon, [ --enable-phalcon   Enable Phalcon])

if test "$PHP_PHALCON" = "yes"; then

	

	if ! test "x" = "x"; then
		PHP_EVAL_LIBLINE(, PHALCON_SHARED_LIBADD)
	fi

	AC_DEFINE(HAVE_PHALCON, 1, [Whether you have Phalcon])
	phalcon_sources="phalcon.c kernel/main.c kernel/memory.c kernel/exception.c kernel/debug.c kernel/backtrace.c kernel/object.c kernel/array.c kernel/string.c kernel/fcall.c kernel/extended/fcall.c kernel/require.c kernel/file.c kernel/operators.c kernel/math.c kernel/concat.c kernel/variables.c kernel/filter.c kernel/iterator.c kernel/time.c kernel/exit.c phalcon/di/injectionawareinterface.zep.c
	phalcon/exception.zep.c
	phalcon/events/eventsawareinterface.zep.c
	phalcon/validation/validatorinterface.zep.c
	phalcon/validation/validator.zep.c
	phalcon/di/injectable.zep.c
	phalcon/forms/elementinterface.zep.c
	phalcon/forms/element.zep.c
	phalcon/factoryinterface.zep.c
	phalcon/mvc/model/validatorinterface.zep.c
	phalcon/cache/backendinterface.zep.c
	phalcon/factory.zep.c
	phalcon/mvc/model/metadatainterface.zep.c
	phalcon/mvc/model/validator.zep.c
	phalcon/cache/backend.zep.c
	phalcon/cache/frontendinterface.zep.c
	phalcon/mvc/model/metadata.zep.c
	phalcon/dispatcherinterface.zep.c
	phalcon/annotations/adapterinterface.zep.c
	phalcon/assets/resourceinterface.zep.c
	phalcon/logger/adapterinterface.zep.c
	phalcon/annotations/adapter.zep.c
	phalcon/config.zep.c
	phalcon/db/adapterinterface.zep.c
	phalcon/logger/adapter.zep.c
	phalcon/logger/formatterinterface.zep.c
	phalcon/session/adapterinterface.zep.c
	phalcon/db/adapter.zep.c
	phalcon/db/dialectinterface.zep.c
	phalcon/logger/formatter.zep.c
	phalcon/mvc/entityinterface.zep.c
	phalcon/mvc/model/resultsetinterface.zep.c
	phalcon/paginator/adapterinterface.zep.c
	phalcon/session/adapter.zep.c
	phalcon/translate/adapterinterface.zep.c
	phalcon/assets/filterinterface.zep.c
	phalcon/db/adapter/pdo.zep.c
	phalcon/db/dialect.zep.c
	phalcon/diinterface.zep.c
	phalcon/flashinterface.zep.c
	phalcon/image/adapterinterface.zep.c
	phalcon/mvc/collection/behaviorinterface.zep.c
	phalcon/mvc/model/behaviorinterface.zep.c
	phalcon/mvc/model/exception.zep.c
	phalcon/mvc/view/engineinterface.zep.c
	phalcon/mvc/viewbaseinterface.zep.c
	phalcon/paginator/adapter.zep.c
	phalcon/translate/adapter.zep.c
	phalcon/acl/adapterinterface.zep.c
	phalcon/application.zep.c
	phalcon/application/exception.zep.c
	phalcon/assets/inline.zep.c
	phalcon/assets/resource.zep.c
	phalcon/cache/frontend/data.zep.c
	phalcon/di.zep.c
	phalcon/dispatcher.zep.c
	phalcon/flash.zep.c
	phalcon/image/adapter.zep.c
	phalcon/mvc/collection/behavior.zep.c
	phalcon/mvc/model/behavior.zep.c
	phalcon/mvc/model/metadata/strategyinterface.zep.c
	phalcon/mvc/model/resultinterface.zep.c
	phalcon/mvc/model/resultset.zep.c
	phalcon/mvc/routerinterface.zep.c
	phalcon/mvc/view/engine.zep.c
	phalcon/translate/interpolatorinterface.zep.c
	phalcon/acl/adapter.zep.c
	phalcon/acl/resourceinterface.zep.c
	phalcon/acl/roleinterface.zep.c
	phalcon/annotations/readerinterface.zep.c
	phalcon/cli/dispatcherinterface.zep.c
	phalcon/cli/taskinterface.zep.c
	phalcon/crypt/exception.zep.c
	phalcon/cryptinterface.zep.c
	phalcon/db/columninterface.zep.c
	phalcon/db/indexinterface.zep.c
	phalcon/db/referenceinterface.zep.c
	phalcon/db/resultinterface.zep.c
	phalcon/di/factorydefault.zep.c
	phalcon/di/serviceinterface.zep.c
	phalcon/escaperinterface.zep.c
	phalcon/events/eventinterface.zep.c
	phalcon/events/managerinterface.zep.c
	phalcon/filterinterface.zep.c
	phalcon/http/cookieinterface.zep.c
	phalcon/http/request/fileinterface.zep.c
	phalcon/http/requestinterface.zep.c
	phalcon/http/response/cookiesinterface.zep.c
	phalcon/http/response/headersinterface.zep.c
	phalcon/http/responseinterface.zep.c
	phalcon/mvc/collectioninterface.zep.c
	phalcon/mvc/controllerinterface.zep.c
	phalcon/mvc/dispatcherinterface.zep.c
	phalcon/mvc/micro/collectioninterface.zep.c
	phalcon/mvc/model/binderinterface.zep.c
	phalcon/mvc/model/criteriainterface.zep.c
	phalcon/mvc/model/managerinterface.zep.c
	phalcon/mvc/model/messageinterface.zep.c
	phalcon/mvc/model/query/builderinterface.zep.c
	phalcon/mvc/model/query/statusinterface.zep.c
	phalcon/mvc/model/queryinterface.zep.c
	phalcon/mvc/model/relationinterface.zep.c
	phalcon/mvc/model/transaction/exception.zep.c
	phalcon/mvc/model/transaction/managerinterface.zep.c
	phalcon/mvc/model/transactioninterface.zep.c
	phalcon/mvc/modelinterface.zep.c
	phalcon/mvc/router.zep.c
	phalcon/mvc/router/groupinterface.zep.c
	phalcon/mvc/router/routeinterface.zep.c
	phalcon/mvc/urlinterface.zep.c
	phalcon/mvc/view/exception.zep.c
	phalcon/mvc/viewinterface.zep.c
	phalcon/session/baginterface.zep.c
	phalcon/validation/combinedfieldsvalidator.zep.c
	phalcon/validation/messageinterface.zep.c
	phalcon/validationinterface.zep.c
	phalcon/acl.zep.c
	phalcon/acl/adapter/memory.zep.c
	phalcon/acl/exception.zep.c
	phalcon/acl/resource.zep.c
	phalcon/acl/resourceaware.zep.c
	phalcon/acl/role.zep.c
	phalcon/acl/roleaware.zep.c
	phalcon/annotations/adapter/apc.zep.c
	phalcon/annotations/adapter/apcu.zep.c
	phalcon/annotations/adapter/files.zep.c
	phalcon/annotations/adapter/memory.zep.c
	phalcon/annotations/adapter/xcache.zep.c
	phalcon/annotations/annotation.zep.c
	phalcon/annotations/collection.zep.c
	phalcon/annotations/exception.zep.c
	phalcon/annotations/factory.zep.c
	phalcon/annotations/reader.zep.c
	phalcon/annotations/reflection.zep.c
	phalcon/assets/collection.zep.c
	phalcon/assets/exception.zep.c
	phalcon/assets/filters/cssmin.zep.c
	phalcon/assets/filters/jsmin.zep.c
	phalcon/assets/filters/none.zep.c
	phalcon/assets/inline/css.zep.c
	phalcon/assets/inline/js.zep.c
	phalcon/assets/manager.zep.c
	phalcon/assets/resource/css.zep.c
	phalcon/assets/resource/js.zep.c
	phalcon/cache/backend/apc.zep.c
	phalcon/cache/backend/apcu.zep.c
	phalcon/cache/backend/factory.zep.c
	phalcon/cache/backend/file.zep.c
	phalcon/cache/backend/libmemcached.zep.c
	phalcon/cache/backend/memcache.zep.c
	phalcon/cache/backend/memory.zep.c
	phalcon/cache/backend/mongo.zep.c
	phalcon/cache/backend/redis.zep.c
	phalcon/cache/backend/xcache.zep.c
	phalcon/cache/exception.zep.c
	phalcon/cache/frontend/base64.zep.c
	phalcon/cache/frontend/factory.zep.c
	phalcon/cache/frontend/igbinary.zep.c
	phalcon/cache/frontend/json.zep.c
	phalcon/cache/frontend/msgpack.zep.c
	phalcon/cache/frontend/none.zep.c
	phalcon/cache/frontend/output.zep.c
	phalcon/cache/multiple.zep.c
	phalcon/cli/console.zep.c
	phalcon/cli/console/exception.zep.c
	phalcon/cli/dispatcher.zep.c
	phalcon/cli/dispatcher/exception.zep.c
	phalcon/cli/router.zep.c
	phalcon/cli/router/exception.zep.c
	phalcon/cli/router/route.zep.c
	phalcon/cli/router/routeinterface.zep.c
	phalcon/cli/routerinterface.zep.c
	phalcon/cli/task.zep.c
	phalcon/config/adapter/grouped.zep.c
	phalcon/config/adapter/ini.zep.c
	phalcon/config/adapter/json.zep.c
	phalcon/config/adapter/php.zep.c
	phalcon/config/adapter/yaml.zep.c
	phalcon/config/exception.zep.c
	phalcon/config/factory.zep.c
	phalcon/crypt.zep.c
	phalcon/crypt/mismatch.zep.c
	phalcon/db.zep.c
	phalcon/db/adapter/pdo/factory.zep.c
	phalcon/db/adapter/pdo/mysql.zep.c
	phalcon/db/adapter/pdo/postgresql.zep.c
	phalcon/db/adapter/pdo/sqlite.zep.c
	phalcon/db/column.zep.c
	phalcon/db/dialect/mysql.zep.c
	phalcon/db/dialect/postgresql.zep.c
	phalcon/db/dialect/sqlite.zep.c
	phalcon/db/exception.zep.c
	phalcon/db/index.zep.c
	phalcon/db/profiler.zep.c
	phalcon/db/profiler/item.zep.c
	phalcon/db/rawvalue.zep.c
	phalcon/db/reference.zep.c
	phalcon/db/result/pdo.zep.c
	phalcon/debug.zep.c
	phalcon/debug/dump.zep.c
	phalcon/debug/exception.zep.c
	phalcon/di/exception.zep.c
	phalcon/di/factorydefault/cli.zep.c
	phalcon/di/service.zep.c
	phalcon/di/service/builder.zep.c
	phalcon/di/serviceproviderinterface.zep.c
	phalcon/escaper.zep.c
	phalcon/escaper/exception.zep.c
	phalcon/events/event.zep.c
	phalcon/events/exception.zep.c
	phalcon/events/manager.zep.c
	phalcon/factory/exception.zep.c
	phalcon/filter.zep.c
	phalcon/filter/exception.zep.c
	phalcon/filter/userfilterinterface.zep.c
	phalcon/flash/direct.zep.c
	phalcon/flash/exception.zep.c
	phalcon/flash/session.zep.c
	phalcon/forms/element/check.zep.c
	phalcon/forms/element/date.zep.c
	phalcon/forms/element/email.zep.c
	phalcon/forms/element/file.zep.c
	phalcon/forms/element/hidden.zep.c
	phalcon/forms/element/numeric.zep.c
	phalcon/forms/element/password.zep.c
	phalcon/forms/element/radio.zep.c
	phalcon/forms/element/select.zep.c
	phalcon/forms/element/submit.zep.c
	phalcon/forms/element/text.zep.c
	phalcon/forms/element/textarea.zep.c
	phalcon/forms/exception.zep.c
	phalcon/forms/form.zep.c
	phalcon/forms/manager.zep.c
	phalcon/http/cookie.zep.c
	phalcon/http/cookie/exception.zep.c
	phalcon/http/request.zep.c
	phalcon/http/request/exception.zep.c
	phalcon/http/request/file.zep.c
	phalcon/http/response.zep.c
	phalcon/http/response/cookies.zep.c
	phalcon/http/response/exception.zep.c
	phalcon/http/response/headers.zep.c
	phalcon/image.zep.c
	phalcon/image/adapter/gd.zep.c
	phalcon/image/adapter/imagick.zep.c
	phalcon/image/exception.zep.c
	phalcon/image/factory.zep.c
	phalcon/kernel.zep.c
	phalcon/loader.zep.c
	phalcon/loader/exception.zep.c
	phalcon/logger.zep.c
	phalcon/logger/adapter/blackhole.zep.c
	phalcon/logger/adapter/file.zep.c
	phalcon/logger/adapter/firephp.zep.c
	phalcon/logger/adapter/stream.zep.c
	phalcon/logger/adapter/syslog.zep.c
	phalcon/logger/exception.zep.c
	phalcon/logger/factory.zep.c
	phalcon/logger/formatter/firephp.zep.c
	phalcon/logger/formatter/json.zep.c
	phalcon/logger/formatter/line.zep.c
	phalcon/logger/formatter/syslog.zep.c
	phalcon/logger/item.zep.c
	phalcon/logger/multiple.zep.c
	phalcon/mvc/application.zep.c
	phalcon/mvc/application/exception.zep.c
	phalcon/mvc/collection.zep.c
	phalcon/mvc/collection/behavior/softdelete.zep.c
	phalcon/mvc/collection/behavior/timestampable.zep.c
	phalcon/mvc/collection/document.zep.c
	phalcon/mvc/collection/exception.zep.c
	phalcon/mvc/collection/manager.zep.c
	phalcon/mvc/collection/managerinterface.zep.c
	phalcon/mvc/controller.zep.c
	phalcon/mvc/controller/bindmodelinterface.zep.c
	phalcon/mvc/dispatcher.zep.c
	phalcon/mvc/dispatcher/exception.zep.c
	phalcon/mvc/micro.zep.c
	phalcon/mvc/micro/collection.zep.c
	phalcon/mvc/micro/exception.zep.c
	phalcon/mvc/micro/lazyloader.zep.c
	phalcon/mvc/micro/middlewareinterface.zep.c
	phalcon/mvc/model.zep.c
	phalcon/mvc/model/behavior/softdelete.zep.c
	phalcon/mvc/model/behavior/timestampable.zep.c
	phalcon/mvc/model/binder.zep.c
	phalcon/mvc/model/binder/bindableinterface.zep.c
	phalcon/mvc/model/criteria.zep.c
	phalcon/mvc/model/manager.zep.c
	phalcon/mvc/model/message.zep.c
	phalcon/mvc/model/metadata/apc.zep.c
	phalcon/mvc/model/metadata/apcu.zep.c
	phalcon/mvc/model/metadata/files.zep.c
	phalcon/mvc/model/metadata/libmemcached.zep.c
	phalcon/mvc/model/metadata/memcache.zep.c
	phalcon/mvc/model/metadata/memory.zep.c
	phalcon/mvc/model/metadata/redis.zep.c
	phalcon/mvc/model/metadata/session.zep.c
	phalcon/mvc/model/metadata/strategy/annotations.zep.c
	phalcon/mvc/model/metadata/strategy/introspection.zep.c
	phalcon/mvc/model/metadata/xcache.zep.c
	phalcon/mvc/model/query.zep.c
	phalcon/mvc/model/query/builder.zep.c
	phalcon/mvc/model/query/lang.zep.c
	phalcon/mvc/model/query/status.zep.c
	phalcon/mvc/model/relation.zep.c
	phalcon/mvc/model/resultset/complex.zep.c
	phalcon/mvc/model/resultset/simple.zep.c
	phalcon/mvc/model/row.zep.c
	phalcon/mvc/model/transaction.zep.c
	phalcon/mvc/model/transaction/failed.zep.c
	phalcon/mvc/model/transaction/manager.zep.c
	phalcon/mvc/model/validationfailed.zep.c
	phalcon/mvc/model/validator/email.zep.c
	phalcon/mvc/model/validator/exclusionin.zep.c
	phalcon/mvc/model/validator/inclusionin.zep.c
	phalcon/mvc/model/validator/ip.zep.c
	phalcon/mvc/model/validator/numericality.zep.c
	phalcon/mvc/model/validator/presenceof.zep.c
	phalcon/mvc/model/validator/regex.zep.c
	phalcon/mvc/model/validator/stringlength.zep.c
	phalcon/mvc/model/validator/uniqueness.zep.c
	phalcon/mvc/model/validator/url.zep.c
	phalcon/mvc/moduledefinitioninterface.zep.c
	phalcon/mvc/router/annotations.zep.c
	phalcon/mvc/router/exception.zep.c
	phalcon/mvc/router/group.zep.c
	phalcon/mvc/router/route.zep.c
	phalcon/mvc/url.zep.c
	phalcon/mvc/url/exception.zep.c
	phalcon/mvc/user/component.zep.c
	phalcon/mvc/user/module.zep.c
	phalcon/mvc/user/plugin.zep.c
	phalcon/mvc/view.zep.c
	phalcon/mvc/view/engine/php.zep.c
	phalcon/mvc/view/engine/volt.zep.c
	phalcon/mvc/view/engine/volt/compiler.zep.c
	phalcon/mvc/view/engine/volt/exception.zep.c
	phalcon/mvc/view/simple.zep.c
	phalcon/paginator/adapter/model.zep.c
	phalcon/paginator/adapter/nativearray.zep.c
	phalcon/paginator/adapter/querybuilder.zep.c
	phalcon/paginator/exception.zep.c
	phalcon/paginator/factory.zep.c
	phalcon/queue/beanstalk.zep.c
	phalcon/queue/beanstalk/exception.zep.c
	phalcon/queue/beanstalk/job.zep.c
	phalcon/registry.zep.c
	phalcon/security.zep.c
	phalcon/security/exception.zep.c
	phalcon/security/random.zep.c
	phalcon/session/adapter/files.zep.c
	phalcon/session/adapter/libmemcached.zep.c
	phalcon/session/adapter/memcache.zep.c
	phalcon/session/adapter/redis.zep.c
	phalcon/session/bag.zep.c
	phalcon/session/exception.zep.c
	phalcon/session/factory.zep.c
	phalcon/tag.zep.c
	phalcon/tag/exception.zep.c
	phalcon/tag/select.zep.c
	phalcon/text.zep.c
	phalcon/translate.zep.c
	phalcon/translate/adapter/csv.zep.c
	phalcon/translate/adapter/gettext.zep.c
	phalcon/translate/adapter/nativearray.zep.c
	phalcon/translate/exception.zep.c
	phalcon/translate/factory.zep.c
	phalcon/translate/interpolator/associativearray.zep.c
	phalcon/translate/interpolator/indexedarray.zep.c
	phalcon/validation.zep.c
	phalcon/validation/exception.zep.c
	phalcon/validation/message.zep.c
	phalcon/validation/message/group.zep.c
	phalcon/validation/validator/alnum.zep.c
	phalcon/validation/validator/alpha.zep.c
	phalcon/validation/validator/between.zep.c
	phalcon/validation/validator/callback.zep.c
	phalcon/validation/validator/confirmation.zep.c
	phalcon/validation/validator/creditcard.zep.c
	phalcon/validation/validator/date.zep.c
	phalcon/validation/validator/digit.zep.c
	phalcon/validation/validator/email.zep.c
	phalcon/validation/validator/exception.zep.c
	phalcon/validation/validator/exclusionin.zep.c
	phalcon/validation/validator/file.zep.c
	phalcon/validation/validator/identical.zep.c
	phalcon/validation/validator/inclusionin.zep.c
	phalcon/validation/validator/numericality.zep.c
	phalcon/validation/validator/presenceof.zep.c
	phalcon/validation/validator/regex.zep.c
	phalcon/validation/validator/stringlength.zep.c
	phalcon/validation/validator/uniqueness.zep.c
	phalcon/validation/validator/url.zep.c
	phalcon/version.zep.c
	phalcon/0__closure.zep.c
	phalcon/1__closure.zep.c
	phalcon/2__closure.zep.c phalcon/annotations/scanner.c
	phalcon/annotations/parser.c
	phalcon/mvc/model/orm.c
	phalcon/mvc/model/query/scanner.c
	phalcon/mvc/model/query/parser.c
	phalcon/mvc/view/engine/volt/parser.c
	phalcon/mvc/view/engine/volt/scanner.c
	phalcon/assets/filters/jsminifier.c
	phalcon/assets/filters/cssminifier.c
	phalcon/mvc/url/utils.c"
	PHP_NEW_EXTENSION(phalcon, $phalcon_sources, $ext_shared,, )
	PHP_SUBST(PHALCON_SHARED_LIBADD)

	old_CPPFLAGS=$CPPFLAGS
	CPPFLAGS="$CPPFLAGS $INCLUDES"

	AC_CHECK_DECL(
		[HAVE_BUNDLED_PCRE],
		[
			AC_CHECK_HEADERS(
				[ext/pcre/php_pcre.h],
				[
					PHP_ADD_EXTENSION_DEP([phalcon], [pcre])
					AC_DEFINE([ZEPHIR_USE_PHP_PCRE], [1], [Whether PHP pcre extension is present at compile time])
				],
				,
				[[#include "main/php.h"]]
			)
		],
		,
		[[#include "php_config.h"]]
	)

	AC_CHECK_DECL(
		[HAVE_JSON],
		[
			AC_CHECK_HEADERS(
				[ext/json/php_json.h],
				[
					PHP_ADD_EXTENSION_DEP([phalcon], [json])
					AC_DEFINE([ZEPHIR_USE_PHP_JSON], [1], [Whether PHP json extension is present at compile time])
				],
				,
				[[#include "main/php.h"]]
			)
		],
		,
		[[#include "php_config.h"]]
	)

	CPPFLAGS=$old_CPPFLAGS

	PHP_INSTALL_HEADERS([ext/phalcon], [php_PHALCON.h])

fi
