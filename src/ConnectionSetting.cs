#region Copyright ©2016, Click2Cloud Inc. - All Rights Reserved
/* ------------------------------------------------------------------- *
*                            Click2Cloud Inc.                          *
*                  Copyright ©2016 - All Rights reserved               *
*                                                                      *
* Apache 2.0 License                                                   *
* You may obtain a copy of the License at                              * 
* http://www.apache.org/licenses/LICENSE-2.0                           *
* Unless required by applicable law or agreed to in writing,           *
* software distributed under the License is distributed on an "AS IS"  *
* BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express  *
* or implied. See the License for the specific language governing      *
* permissions and limitations under the License.                       *
*                                                                      *
* -------------------------------------------------------------------  */
#endregion Copyright ©2016, Click2Cloud Inc. - All Rights Reserved

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Click2Cloud.Samples.AspNetCore.MvcSQLDb
{
    public static class ConnectionSetting
    {
        internal static string CONNECTION_STRING
        {
            get
            {
                if (!(string.IsNullOrEmpty(DATABASE_USER) || string.IsNullOrEmpty(SA_PASSWORD)
                || string.IsNullOrEmpty(MSSQL_SERVICE_HOST) || string.IsNullOrEmpty(DATABASE_NAME) 
                || string.IsNullOrEmpty(MSSQL_SERVICE_PORT)))
                {
                    string _connectionString = string.Format("Data Source={0},{4}; Initial Catalog={1}; User ID={2}; Password={3}", MSSQL_SERVICE_HOST, DATABASE_NAME,
                    DATABASE_USER, SA_PASSWORD, MSSQL_SERVICE_PORT);

                    return _connectionString;
                }
                else
                {
                    throw new Exception("Environment variables not set.");
                }
            }
        }

        private static string MSSQL_SERVICE_HOST
        {
            get
            {
                if (!string.IsNullOrEmpty(Environment.GetEnvironmentVariable("MSSQL_SERVICE_HOST")))
                {
                    return Environment.GetEnvironmentVariable("MSSQL_SERVICE_HOST");
                }

                return string.Empty;
            }
        }

        private static string DATABASE_USER
        {
            get
            {
                return "sa";
            }
        }

        private static string SA_PASSWORD
        {
            get
            {
                if (!string.IsNullOrEmpty(Environment.GetEnvironmentVariable("SA_PASSWORD")))
                {
                    return Environment.GetEnvironmentVariable("SA_PASSWORD");
                }

                return string.Empty;
            }
        }

        internal static string DATABASE_NAME
        {
            get
            {
                if (!string.IsNullOrEmpty(Environment.GetEnvironmentVariable("DATABASE_NAME")))
                {
                    return Environment.GetEnvironmentVariable("DATABASE_NAME");
                }

                return string.Empty;
            }
        }

        internal static string MSSQL_SERVICE_PORT
        {
            get
            {
                if (!string.IsNullOrEmpty(Environment.GetEnvironmentVariable("MSSQL_SERVICE_PORT")))
                {
                    return Environment.GetEnvironmentVariable("MSSQL_SERVICE_PORT");
                }

                return string.Empty;
            }
        }
    }
}
